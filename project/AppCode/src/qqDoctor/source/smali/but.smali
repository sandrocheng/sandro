.class final Lbut;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbuo$b;

.field private final synthetic b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

.field private final synthetic c:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbuo$b;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lbut;->a:Lbuo$b;

    iput-object p2, p0, Lbut;->b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iput-object p3, p0, Lbut;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbut;->a:Lbuo$b;

    invoke-static {v0}, Lbuo$b;->b(Lbuo$b;)Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;

    move-result-object v0

    iget-object v1, p0, Lbut;->b:Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    iget-object v2, p0, Lbut;->c:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;->unBlockSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    return-void
.end method
