.class Lcom/antivirus/ui/callmessagefilter/fragment/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/b/b;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/b/d;

.field final synthetic c:Lcom/antivirus/ui/callmessagefilter/fragment/v;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Lcom/antivirus/ui/callmessagefilter/b/b;Lcom/antivirus/ui/callmessagefilter/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ad;->c:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ad;->a:Lcom/antivirus/ui/callmessagefilter/b/b;

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ad;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ad;->a:Lcom/antivirus/ui/callmessagefilter/b/b;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ad;->b:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/b/b;->a(Lcom/antivirus/ui/callmessagefilter/x;)V

    return-void
.end method
