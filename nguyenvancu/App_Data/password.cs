using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;

namespace nguyenvancu
{
    public class password
    {
        static byte[] HASHPW(string password, out byte[] salt)
        {
            using (var rng = RandomNumberGenerator.Create())
            {
                byte[] abc = new byte[16];
                rng.GetBytes(abc);
                salt = abc;
            }
            string pass = password;
            // Hash the password with PBKDF2
            using (var pbkdf2 = new Rfc2898DeriveBytes(pass, salt, 10000))
            {
                return pbkdf2.GetBytes(32);
            }
        }
        static byte[] HASHPW(byte[] password, byte[] salt)
        {
            string pass = Convert.ToBase64String(password);
            // Hash the password with PBKDF2
            using (var pbkdf2 = new Rfc2898DeriveBytes(pass, salt, 10000))
            {
                return pbkdf2.GetBytes(32);
            }
        }
        static byte[] HASHPW(string password, byte[] salt)
        {
            // Hash the password with PBKDF2
            using (var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000))
            {
                return pbkdf2.GetBytes(32);
            }
        }
        public static Byte[] HASHPW4time(string password, out byte[] salt)
        {
            byte[] salttamp = new byte[16];
            byte[] hash1 = HASHPW(password, out salttamp);
            salt = salttamp;
            return HASHPW(HASHPW(HASHPW(hash1, salt), salt), salt);
        }
        public static Byte[] HASHPW4time(string password, byte[] salt)
        {
            return HASHPW(HASHPW(HASHPW(HASHPW(password, salt), salt), salt), salt);
        }
        public static Boolean Comparehash(Byte[] hashpw, string password, Byte[] salt)
        {
            byte[] hash = HASHPW4time(password, salt);
            if (Enumerable.SequenceEqual(hashpw, hash))
            {
                return true;
            }
            else return false;
        }
    }
}