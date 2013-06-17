.class Lcom/antivirus/ui/callmessagefilter/fragment/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/y;->b:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/y;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/y;->b:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-static {v1}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(Lcom/antivirus/ui/callmessagefilter/fragment/v;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b/a/b;->a(Ljava/util/List;)V

    return-void
.end method
