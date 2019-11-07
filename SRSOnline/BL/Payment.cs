using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace SRSOnline.BL
{
    public class PaymentAction
    {
        public PaymentAction(PaymentRequest request)
        {
            Request = request;
        }

        public void StartPayment()
        {
            IPaymentSystem paymentSystem = PaymentFactory.Create();
            ActivePayment = paymentSystem.MakePayment(Request);
        }

        // will block until complete
        public PaymentResult GetResult()
        {
            return ActivePayment.Result;
        }
        private PaymentRequest Request { get; set; }
        private Task<PaymentResult> ActivePayment { get; set; }
    }
}