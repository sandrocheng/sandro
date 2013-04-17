.class final Lbul;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbuk;


# direct methods
.method constructor <init>(Lbuk;)V
    .locals 0

    iput-object p1, p0, Lbul;->a:Lbuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbul;->a:Lbuk;

    iget-object v0, v0, Lbuk;->g:Lbuj$a;

    invoke-static {v0}, Lbuj$a;->f(Lbuj$a;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->hangup()V

    return-void
.end method
