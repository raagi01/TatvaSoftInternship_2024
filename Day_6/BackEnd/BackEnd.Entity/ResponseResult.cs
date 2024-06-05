using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.Entity
{
    public class ResponseResult
    {
        public object Data { get; set; } = new object();
        public ResponseStatus Result { get; set; } = ResponseStatus.Error;
        public string Message { get; set; } = string.Empty;
    }
    public enum ResponseStatus
    {
        Error,
        Success
    }
}
