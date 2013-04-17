.class final Lbcw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbcu;


# direct methods
.method constructor <init>(Lbcu;)V
    .locals 0

    iput-object p1, p0, Lbcw;->a:Lbcu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lfi;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcw;->a:Lbcu;

    invoke-static {v0}, Lbcu;->b(Lbcu;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->v()V

    :cond_0
    return-void
.end method
