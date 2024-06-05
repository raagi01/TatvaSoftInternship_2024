using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BackEnd.Entity;


namespace BackEnd.DAL
{
    public class DALLogin
    {
        private readonly CIDbContext _cIDbContext;
        public DALLogin(CIDbContext cIDbContext)
        {
            _cIDbContext = cIDbContext;
        }

        public User LoginUser(UserLogin user)
        {   
            //UserLogin userLogin = new UserLogin();
            User userObj = new User();
            try
            {
                var query = from u in _cIDbContext.User
                            where u.EmailAddress == user.EmailAddress && u.IsDeleted == false
                            select new
                            {
                                u.Id,
                                u.FirstName,
                                u.LastName,
                                u.PhoneNumber,
                                u.EmailAddress,
                                u.UserType,
                                u.Password,
                                //UserImage = u.UserImage
                            };

                var userData = query.FirstOrDefault();

                if (userData != null)
                {
                    if (userData.Password == user.Password)
                    {
                        userObj.Id = userData.Id;
                        userObj.FirstName = userData.FirstName;
                        userObj.LastName = userData.LastName;
                        userObj.PhoneNumber = userData.PhoneNumber;
                        userObj.EmailAddress = userData.EmailAddress;
                        userObj.UserType = userData.UserType;
                        //userObj.UserImage = userData.UserImage;
                        userObj.Message = "Login Successfully";
                    }
                    else
                    {
                        userObj.Message = "Incorrect Password.";
                    }
                }
                else
                {
                    userObj.Message = "Email Address Not Found.";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return userObj;
        }
    }
}
