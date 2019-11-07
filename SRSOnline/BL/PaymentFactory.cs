using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SRSOnline.BL
{
    public static class PaymentFactory
    {
        /// <summary>
        /// Create a payment system. 
        /// </summary>
        /// <returns></returns>
        public static IPaymentSystem Create() { return new PaymentSystem(); }
    }
}