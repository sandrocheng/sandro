.class public Lorg/antivirus/ui/InstalledApp;
.super Ljava/lang/Object;


# instance fields
.field public apkSize:J

.field public flags:I

.field public inTraffic:J

.field public isRunning:Z

.field public mAppName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mPackageLocation:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mProcessName:Ljava/lang/String;

.field public mView:Landroid/view/View;

.field public mViewContainer:Landroid/view/ViewGroup;

.field public movable:B

.field public outTraffic:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/antivirus/ui/InstalledApp;->inTraffic:J

    iput-wide v0, p0, Lorg/antivirus/ui/InstalledApp;->outTraffic:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/InstalledApp;->isRunning:Z

    return-void
.end method
