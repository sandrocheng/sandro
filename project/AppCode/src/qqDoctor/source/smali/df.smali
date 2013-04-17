.class public final Ldf;
.super Ljava/lang/Object;


# instance fields
.field a:Lcg;

.field b:I

.field public c:Landroid/os/Handler;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x51

    iput v0, p0, Ldf;->b:I

    new-instance v0, Ldg;

    invoke-direct {v0}, Ldg;-><init>()V

    iput-object v0, p0, Ldf;->c:Landroid/os/Handler;

    new-instance v0, Ldh;

    invoke-direct {v0, p0}, Ldh;-><init>(Ldf;)V

    iput-object v0, p0, Ldf;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Ldf;->a:Lcg;

    return-void
.end method
