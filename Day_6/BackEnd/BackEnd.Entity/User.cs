using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackEnd.Entity
{
    public class User : BaseEntity
    {
        [Key]
        public int Id { get; set; }
        public string FirstName { get; set; } = string.Empty;
        public string LastName { get; set; } = string.Empty;
        public string PhoneNumber { get; set; } = string.Empty;
        public string EmailAddress { get; set; } = string.Empty;
        public string UserType { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;

        [NotMapped]
        public string ConfirmPassword { get; set; } = string.Empty;

        [NotMapped]
        public string Uid { get; set; } = string.Empty;

        [NotMapped]
        public string Message { get; set; } = string.Empty;

        [NotMapped]
        public string UserImage { get; set; } = string.Empty;

        [NotMapped]
        public string UserFullName { get; set; } = string.Empty;
    }

    public class UserDetail : BaseEntity
    {
        [Key]
        public int Id { get; set; }
        public int UserId { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Surname { get; set; } = string.Empty;
        public string EmployeeId { get; set; } = string.Empty;
        public string Manager { get; set; } = string.Empty;
        public string Title { get; set; } = string.Empty;
        public string Department { get; set; } = string.Empty;
        public string MyProfile { get; set; } = string.Empty;
        public string WhyIVolunteer { get; set; } = string.Empty;
        public int CountryId { get; set; }
        public int CityId { get; set; }
        public string Avilability { get; set; } = string.Empty;
        public string LinkdInUrl { get; set; } = string.Empty;
        public string MySkills { get; set; } = string.Empty;
        public string UserImage { get; set; } = string.Empty;
        public bool Status { get; set; }

        [NotMapped]
        public int UId { get; set; }

        [NotMapped]
        public string FirstName { get; set; } = string.Empty;

        [NotMapped]
        public string LastName { get; set; } = string.Empty;

        [NotMapped]
        public string PhoneNumber { get; set; } = string.Empty;

        [NotMapped]
        public string EmailAddress { get; set; } = string.Empty;

        [NotMapped]
        public string UserType { get; set; } = string.Empty;
    }



    //public class ForgotPassword
    //{
    //    [Key]
    //    [NotMapped]
    //    public int TempId { get; set; }
    //    public string Id { get; set; }
    //    public int UserId { get; set; }
    //    public DateTime RequestDateTime { get; set; }
    //    [NotMapped]
    //    public string EmailAddress { get; set; }
    //    [NotMapped]
    //    public string baseUrl { get; set; }
    //}

    //public class ChangePassword
    //{
    //    public int UserId { get; set; }
    //    public string OldPassword { get; set; }
    //    public string NewPassword { get; set; }
    //    public string ConfirmPassword { get; set; }
    //}
}

