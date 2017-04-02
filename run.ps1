$packages = New-Object System.Collections.ArrayList
$packages.Add("Cake")
$packages.Add("Cake.Core")
$packages.Add("Cake.Common")
$packages.Add("Cake.CoreCLR")
$packages.Add("Cake.Testing")
$packages.Add("Cake.Frosting.Template")
$packages.Add("Cake.FileHelpers")
$packages.Add("Cake.Npm")
$packages.Add("Cake.AutoRest")
$packages.Add("Cake.Json")
$packages.Add("Cake.PowerShell")
$packages.Add("Cake.Git")
$packages.Add("Cake.Xamarin")
$packages.Add("Cake.Gulp")
$packages.Add("Cake.Coveralls")
$packages.Add("Cake.Slack")
$packages.Add("Cake.CMake")
$packages.Add("Cake.WebDeploy")
$packages.Add("Cake.Yaml")
$packages.Add("Cake.Compression")
$packages.Add("Cake.AWS.S3")
$packages.Add("Cake.XCode")
$packages.Add("Cake.Services")
$packages.Add("Cake.SqlServer")
$packages.Add("Cake.Gitter")
$packages.Add("Cake.XdtTransform")
$packages.Add("Cake.Plist")
$packages.Add("Cake.Twitter")
$packages.Add("Cake.IIS")
$packages.Add("Cake.AndroidAppManifest")
$packages.Add("Cake.Figlet")
$packages.Add("Cake.DocFx")
$packages.Add("Cake.AzureStorage")
$packages.Add("Cake.ReSharperReports")
$packages.Add("Cake.Docker")
$packages.Add("Cake.Kudu")
$packages.Add("Cake.AppVeyor")
$packages.Add("Cake.ExtendedNuGet")
$packages.Add("Cake.SemVer")
$packages.Add("Cake.AliaSql")
$packages.Add("Cake.NSwag")
$packages.Add("Cake.Squirrel")
$packages.Add("Cake.AWS.ElasticLoadBalancing")
$packages.Add("Cake.Vagrant")
$packages.Add("Cake.HockeyApp")
$packages.Add("Cake.VersionReader")
$packages.Add("Cake.Sonar")
$packages.Add("Cake.DoInDirectory")
$packages.Add("Cake.MsDeploy")
$packages.Add("Cake.Incubator")
$packages.Add("Cake.VsCode")
$packages.Add("Cake.Yarn")
$packages.Add("Cake.Tfx")
$packages.Add("Cake.Webpack")
$packages.Add("Cake.Watch")
$packages.Add("Cake.MonoApiTools")
$packages.Add("Cake.FluentMigrator")
$packages.Add("Cake.AWS.EC2")
$packages.Add("Cake.Http")
$packages.Add("Cake.Gem")
$packages.Add("Cake.MicrosoftTeams")
$packages.Add("Cake.ProjHelpers")
$packages.Add("Cake.StyleCop")
$packages.Add("Cake.HipChat")
$packages.Add("Cake.Paket")
$packages.Add("Cake.Raygun")
$packages.Add("Cake.AppleSimulator")
$packages.Add("Cake.Orchard")
$packages.Add("Cake.EnvXmlTransform")
$packages.Add("Cake.GenyMotion")
$packages.Add("Cake.Curl")
$packages.Add("Cake.Extensions")
$packages.Add("Cake.StrongNameTool")
$packages.Add("Cake.Putty")
$packages.Add("Cake.CakeMail")
$packages.Add("Cake.AWS.Route53")
$packages.Add("Cake.Email")
$packages.Add("Cake.SimpleHTTPServer")
$packages.Add("Cake.SendGrid")
$packages.Add("Cake.Newman")
$packages.Add("Cake.NewRelic")
$packages.Add("Cake.TopShelf")
$packages.Add("Cake.SqlServerPackager")
$packages.Add("Cake.WinSCP")
$packages.Add("Cake.CakeBoss")
$packages.Add("Cake.AWS.CloudFront")
$packages.Add("Cake.Ftp")
$packages.Add("Cake.GitPackager")
$packages.Add("Cake.AppPackager")
$packages.Add("Cake.Paket.Module")
$packages.Add("Cake.ServiceOrchestration")
$packages.Add("Cake.Prca")
$packages.Add("Cake.Storyteller")
$packages.Add("Cake.SquareLogo")
$packages.Add("Cake.AWS.ElasticBeanstalk")
$packages.Add("Cake.Path")
$packages.Add("Cake.SqlTools")
$packages.Add("Cake.JMeter")
$packages.Add("Cake.NSpec")
$packages.Add("Cake.VsMetrics")
$packages.Add("Cake.Android.SdkManager")
$packages.Add("Cake.Android.Adb")
$packages.Add("Cake.LongPath.Module")
$packages.Add("Cake.UServer")
$packages.Add("Cake.OctoDeploy")
$packages.Add("Cake.Prca.PullRequests.Tfs")
$packages.Add("Cake.Prca.Issues.MsBuild")
$packages.Add("Cake.GithubUtility")
$packages.Add("Cake.Recipe")
$packages.Add("Cake.Prca.Issues.InspectCode")
$packages.Add("Cake.Chutzpah")
$packages.Add("Cake.AssemblyInfoReflector")
$packages.Add("Cake.Terraform")
$packages.Add("Cake.ActiveDirectory")
$packages.Add("Cake.Mage")
$packages.Add("Cake.DotNetCoreEf")
$packages.Add("Cake.Transifex")
$packages.Add("Cake.Dialog")
$packages.Add("Cake.Gradle")
$packages.Add("Cake.CsvHelper")
$packages.Add("Cake.Chocolatey.Module")
$packages.Add("Cake.Grunt")

$date = Get-Date -format yyyy-MMM-dd

foreach ($package in $packages) 
{
    $url = "https://www.nuget.org/packages/$package"
    $request = Invoke-WebRequest $url
    .\Get-WebRequestTable.ps1 $request -TableNumber 0 | Export-Csv -Path "$package-$date.csv"
}
