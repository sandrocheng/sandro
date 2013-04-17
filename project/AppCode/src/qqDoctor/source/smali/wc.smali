.class public final Lwc;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lho;

.field private synthetic c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lho;J)V
    .locals 0

    iput-object p1, p0, Lwc;->a:Landroid/content/Context;

    iput-object p2, p0, Lwc;->b:Lho;

    iput-wide p3, p0, Lwc;->c:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lacg;

    iget-object v1, p0, Lwc;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lacg;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lacg;->e()V

    invoke-virtual {v0}, Lacg;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwc;->b:Lho;

    invoke-virtual {v0}, Lho;->aM()J

    move-result-wide v0

    iget-wide v2, p0, Lwc;->c:J

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwc;->b:Lho;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lho;->R(Z)V

    iget-object v0, p0, Lwc;->b:Lho;

    iget-wide v1, p0, Lwc;->c:J

    invoke-virtual {v0, v1, v2}, Lho;->i(J)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, p0, Lwc;->a:Landroid/content/Context;

    const v2, 0x7f0b03dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lov;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lwc;->b:Lho;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lho;->R(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
