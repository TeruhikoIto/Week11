using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Week11
{
    public class Account
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public double Amount { get; set; }
        public string Country { get; set; }
        public string Image { get; set; }

        public Account(int id, string name, string type, double amount, string country, string image)
        {
            Id = id;
            Name = name;
            Type = type;
            Amount = amount;
            Country = country;
            Image = image;
        }
        public Account(string name, string type, double amount, string country, string image)
        {
            Name = name;
            Type = type;
            Amount = amount;
            Country = country;
            Image = image;
        }
    }
}