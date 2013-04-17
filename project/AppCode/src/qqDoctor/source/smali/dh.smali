.class final Ldh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldf;


# direct methods
.method constructor <init>(Ldf;)V
    .locals 0

    iput-object p1, p0, Ldh;->a:Ldf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldh;->a:Ldf;

    iget-object v0, v0, Ldf;->a:Lcg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldh;->a:Ldf;

    iget-object v0, v0, Ldf;->a:Lcg;

    iget-object v1, p0, Ldh;->a:Ldf;

    iget v1, v1, Ldf;->b:I

    invoke-interface {v0}, Lcg;->a()V

    :cond_0
    return-void
.end method
