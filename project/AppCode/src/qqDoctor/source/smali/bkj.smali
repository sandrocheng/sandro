.class final Lbkj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;


# instance fields
.field private synthetic a:Lbki;


# direct methods
.method constructor <init>(Lbki;)V
    .locals 0

    iput-object p1, p0, Lbkj;->a:Lbki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onCallback(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_0

    if-ne p2, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lbkj;->a:Lbki;

    invoke-static {v0}, Lbki;->a(Lbki;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lbkj;->a:Lbki;

    invoke-static {v0}, Lbki;->a(Lbki;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
