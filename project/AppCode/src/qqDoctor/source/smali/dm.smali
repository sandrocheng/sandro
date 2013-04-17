.class final Ldm;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Ldl;


# direct methods
.method constructor <init>(Ldl;)V
    .locals 0

    iput-object p1, p0, Ldm;->a:Ldl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Ldm;->a:Ldl;

    iget-object v1, v0, Ldl;->a:Ldo;

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/http/HttpEntity;

    invoke-interface {v1, v2, v0}, Ldo;->a(ILorg/apache/http/HttpEntity;)V

    return-void
.end method
