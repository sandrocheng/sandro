.class final Lfr;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.app.admin.IDevicePolicyManager$Stub"

    invoke-static {v0}, Lbk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRANSACTION_packageHasActiveAdmins"

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lbk;->a(Ljava/lang/String;I)I

    const-string v0, "TRANSACTION_removeActiveAdmin"

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lbk;->a(Ljava/lang/String;I)I

    const-string v0, "device_policy"

    invoke-static {v0}, Ley;->a(Ljava/lang/String;)Landroid/os/IBinder;

    :cond_0
    return-void
.end method
