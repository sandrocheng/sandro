.class final Lcom/ijinshan/kinghelper/firewall/dt;
.super Ljava/lang/Object;
.source "ServicesSmsDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 193
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->d(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)Lcom/ijinshan/kinghelper/firewall/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->c(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->b(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 194
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->e(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    .line 196
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget v1, v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v4, "_id = ? and type = 1"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->e(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 207
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->d(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)Lcom/ijinshan/kinghelper/firewall/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ek;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->c(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ei;

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ei;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->b(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v0, v5}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->setResult(I)V

    .line 210
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->finish()V

    .line 216
    :goto_1
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->f(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)Lcom/ijinshan/kinghelper/firewall/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/dx;->notifyDataSetChanged()V

    .line 214
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dt;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;->g(Lcom/ijinshan/kinghelper/firewall/ServicesSmsDetailActivity;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
