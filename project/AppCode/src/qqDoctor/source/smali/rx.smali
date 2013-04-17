.class public final Lrx;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lho;

.field public c:Lso;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx;->a:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lrx;->b:Lho;

    iget-object v0, p0, Lrx;->b:Lho;

    invoke-virtual {v0}, Lho;->ca()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lrx;->b:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->v(J)V

    :cond_0
    iget-object v0, p0, Lrx;->b:Lho;

    invoke-virtual {v0}, Lho;->cC()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx;->b:Lho;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->w(J)V

    :cond_1
    invoke-static {}, Lso;->a()Lso;

    move-result-object v0

    iput-object v0, p0, Lrx;->c:Lso;

    return-void
.end method
