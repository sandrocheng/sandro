.class final Lboq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbok;


# direct methods
.method constructor <init>(Lbok;)V
    .locals 0

    iput-object p1, p0, Lboq;->a:Lbok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0}, Lbok;->j(Lbok;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ldr;

    invoke-direct {v1}, Ldr;-><init>()V

    iget-object v2, p0, Lboq;->a:Lbok;

    invoke-static {v2}, Lbok;->k(Lbok;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lboq;->a:Lbok;

    invoke-static {v2}, Lbok;->l(Lbok;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ldr;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldr;->b:Ljava/lang/String;

    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0}, Lbok;->m(Lbok;)Lij;

    move-result-object v0

    iget-object v2, v0, Lij;->b:Lhs;

    iget-object v3, v0, Lij;->c:Ljava/lang/String;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "pkgName"

    iget-object v6, v1, Ldr;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "appName"

    iget-object v1, v1, Ldr;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, v0, Lij;->b:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    iget-object v1, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v2, "update_app_count"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "update_app_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0}, Lbok;->n(Lbok;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lboq;->a:Lbok;

    invoke-static {v1}, Lbok;->o(Lbok;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0927

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0}, Lbok;->p(Lbok;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0}, Lbok;->q(Lbok;)Ljt;

    move-result-object v0

    invoke-virtual {v0}, Ljt;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0}, Lbok;->m(Lbok;)Lij;

    move-result-object v0

    invoke-virtual {v0}, Lij;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0}, Lbok;->q(Lbok;)Ljt;

    move-result-object v0

    invoke-virtual {v0}, Ljt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lboq;->a:Lbok;

    invoke-static {v1}, Lbok;->m(Lbok;)Lij;

    move-result-object v1

    invoke-virtual {v1}, Lij;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lboq;->a:Lbok;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbok;->a(Lbok;Z)Z

    :cond_0
    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6721

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lboq;->a:Lbok;

    invoke-static {v0, v7}, Lbok;->a(Lbok;Z)Z

    goto :goto_0
.end method
