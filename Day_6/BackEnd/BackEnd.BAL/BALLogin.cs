using BackEnd.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BackEnd.DAL;
using BackEnd.DAL.JWTService;

namespace BackEnd.BAL
{
    public class BALLogin
    {
        private readonly DALLogin _dalLogin;
        private readonly JwtService _jwtService;
        ResponseResult result = new ResponseResult();
        public BALLogin(DALLogin dalLogin, JwtService jwtService)
        {
            _dalLogin = dalLogin;
            _jwtService = jwtService;
        }

        public ResponseResult LoginUser(UserLogin user)
        {
            try
            {
                User userObj = new User();
                userObj = UserLogin(user);

                if (userObj != null)
                {
                    if (userObj.Message.ToString() == "Login Successfully")
                    {
                        result.Message = userObj.Message;
                        result.Result = ResponseStatus.Success;
                        result.Data = _jwtService.GenerateToken(userObj.Id.ToString(), userObj.FirstName, userObj.LastName, userObj.PhoneNumber, userObj.EmailAddress, userObj.UserType, userObj.UserImage);
                    }
                    else
                    {
                        result.Message = userObj.Message;
                        result.Result = ResponseStatus.Error;
                    }
                }
                else
                {
                    result.Message = "Error in Login";
                    result.Result = ResponseStatus.Error;
                }
            }
            catch (Exception)
            {
                throw;
            }
            return result;
        }
        public User UserLogin(UserLogin user)
        {
            //User userOb = new User()
            //{
            //    EmailAddress = user.EmailAddress,
            //    Password = user.Password
            //};

            return _dalLogin.LoginUser(user);
        }
    }
}
