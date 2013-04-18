.class final Lcom/ijinshan/kinghelper/firewall/ck;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 778
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/mydb/opt/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->q(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->q(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v1

    array-length v2, v0

    if-gt v1, v2, :cond_0

    .line 780
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->q(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->q(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 785
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->q(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(I)V

    .line 786
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->r(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->g(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->r(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/Preference;->a(Ljava/lang/CharSequence;)V

    .line 788
    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dc;->d(I)V

    .line 789
    const-string v0, "\u9009\u62e9\u5168\u7701"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->i(Ljava/lang/String;)V

    .line 799
    :goto_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 800
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const-string v1, "\u672a\u9009\u62e9\u4efb\u4f55\u5730\u533a"

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->f(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->r(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/mydb/opt/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->b(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 793
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->s(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9009\u62e9\u5168\u7701"

    aput-object v2, v1, v4

    move v1, v4

    .line 794
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 795
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->s(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v0, v1

    aput-object v4, v2, v3

    .line 794
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ck;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->showDialog(I)V

    goto :goto_1
.end method
