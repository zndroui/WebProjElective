using System.ComponentModel.DataAnnotations;
using System.Numerics;

namespace WebProjElective.Models
{
    public class Users
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public string StAddress { get; set; }
        public string City { get; set; }
        public string Province { get; set; }

        [Required]
        [StringLength(11, MinimumLength = 11, ErrorMessage = "Phone number must be exactly 11 digits.")]
        [RegularExpression(@"^\d{11}$", ErrorMessage = "Phone number must be numeric and 11 digits.")]
        public string PNumber { get; set; }

        public string Gender { get; set; }
        public DateTime BDate { get; set; }
        public string AcctType { get; set; }

    }
}
