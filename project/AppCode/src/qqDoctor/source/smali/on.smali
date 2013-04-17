.class public final Lon;
.super Ljava/lang/Object;

# interfaces
.implements Lacj$a;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;)V
    .locals 0

    iput-object p1, p0, Lon;->a:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lon;->a:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v0, v0, Lok;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Lms;)V
    .locals 0

    return-void
.end method

.method public final b(Lms;)V
    .locals 0

    return-void
.end method
