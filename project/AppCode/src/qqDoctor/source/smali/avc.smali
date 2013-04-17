.class final Lavc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lauu;


# direct methods
.method constructor <init>(Lauu;)V
    .locals 0

    iput-object p1, p0, Lavc;->a:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lavc;->a:Lauu;

    invoke-static {v0}, Lauu;->l(Lauu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lavc;->a:Lauu;

    invoke-static {v1}, Lauu;->m(Lauu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget-object v1, p0, Lavc;->a:Lauu;

    invoke-static {v1}, Lauu;->g(Lauu;)Lki;

    move-result-object v1

    iget-object v2, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lki;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lavc;->a:Lauu;

    invoke-static {v0}, Lauu;->n(Lauu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavc;->a:Lauu;

    invoke-static {v1}, Lauu;->o(Lauu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b043a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66d4

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "phone"

    iget-object v0, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lavc;->a:Lauu;

    invoke-static {v0}, Lauu;->p(Lauu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
