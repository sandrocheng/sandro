.class final Lne;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lnd;


# direct methods
.method constructor <init>(Lnd;)V
    .locals 0

    iput-object p1, p0, Lne;->a:Lnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lvh;->g()I

    move-result v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->dB()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lne;->a:Lnd;

    const/16 v3, 0x66be

    sub-int/2addr v1, v0

    invoke-virtual {v2, v3, v1}, Lnd;->b(II)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lho;->B(J)V

    goto :goto_0
.end method
