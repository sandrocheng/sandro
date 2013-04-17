.class final Lcb$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcb;


# direct methods
.method public constructor <init>(Lcb;)V
    .locals 1

    iput-object p1, p0, Lcb$a;->a:Lcb;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcb$a;->a:Lcb;

    invoke-static {v0}, Lcb;->a(Lcb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcb$a;->a:Lcb;

    invoke-static {v2}, Lcb;->b(Lcb;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcb$a;->a:Lcb;

    invoke-static {v0}, Lcb;->c(Lcb;)Z

    :cond_0
    return-void
.end method
