using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_451ecommerce.Startup))]
namespace _451ecommerce
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
