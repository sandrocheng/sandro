.class Lcom/antivirus/ui/callmessagefilter/fragment/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/ab;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ac;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ac;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ab;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->c:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ac;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ab;

    iget-object v1, v0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/ac;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ab;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/ab;->d:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/fragment/v;->b:Lcom/antivirus/ui/callmessagefilter/w;

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/antivirus/ui/callmessagefilter/fragment/v;->a(IZ)V

    return-void
.end method
