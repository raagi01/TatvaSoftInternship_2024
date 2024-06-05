using Microsoft.AspNetCore.Authorization;
using BackEnd.Entity;
using Microsoft.AspNetCore.Mvc;
using BackEnd.BAL;

namespace BackEnd.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private readonly BALLogin _balLogin;
        ResponseResult result = new ResponseResult();
        public LoginController(BALLogin balLogin)
        {
            _balLogin = balLogin;
        }

        [HttpPost]
        [Route("LoginUser")]
        public ResponseResult LoginUser(UserLogin user)
        {
            try
            {
                result.Data = _balLogin.LoginUser(user);
                result.Result = ResponseStatus.Success;
            }
            catch (Exception ex)
            {
                result.Result = ResponseStatus.Error;
                result.Message = ex.Message;
            }
            return result;
        }
    }
}
