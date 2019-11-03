using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SRSOnline.Startup))]
namespace SRSOnline
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
