.class public abstract Lq;
.super Ljava/lang/Object;

# interfaces
.implements Ly;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lq;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Ly;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ls;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lq;->a(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lq;->g()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    if-eqz v2, :cond_6

    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    iget-object v2, p0, Lq;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lq;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lq;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lgu;->b:Landroid/net/Uri;

    iget-object v3, p0, Lq;->b:Ljava/lang/String;

    iget-object v4, p0, Lq;->e:Ljava/lang/String;

    iget-object v5, p0, Lq;->f:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4, v5}, La;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v6, v2, :cond_0

    new-instance v0, Ls;

    invoke-direct {v0}, Ls;-><init>()V

    throw v0

    :cond_0
    if-ne v1, v2, :cond_5

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, p0, Lq;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lq;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lq;->c:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lq;->a:Ljava/lang/String;

    iget-object v4, p0, Lq;->d:Ljava/lang/String;

    iget-object v5, p0, Lq;->c:Ljava/lang/String;

    invoke-static {p1, v2, v3, v4, v5}, La;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v6, v2, :cond_1

    new-instance v0, Ls;

    invoke-direct {v0}, Ls;-><init>()V

    throw v0

    :cond_1
    if-ne v1, v2, :cond_3

    :goto_2
    if-eqz v0, :cond_2

    :goto_3
    return-object p0

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_0
.end method

.method protected abstract a()V
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()[Lv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "from"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq;->b:Ljava/lang/String;

    return-object v0
.end method
