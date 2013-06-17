.class Lcom/antivirus/ui/callmessagefilter/fragment/p;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Landroid/support/v4/app/i;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;Landroid/support/v4/app/i;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/p;->b:Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/p;->a:Landroid/support/v4/app/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/p;->a:Landroid/support/v4/app/i;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/core/b/a/b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/callmessagefilter/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/p;->b:Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->a(Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;ZLjava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/callmessagefilter/fragment/p;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
