.class Lcom/antivirus/ui/callmessagefilter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/d;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/antivirus/ui/callmessagefilter/v;

.field final synthetic d:Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/j;Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/v;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/k;->d:Lcom/antivirus/ui/callmessagefilter/j;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/k;->a:Lcom/antivirus/ui/callmessagefilter/d;

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/k;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/antivirus/ui/callmessagefilter/k;->c:Lcom/antivirus/ui/callmessagefilter/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/k;->d:Lcom/antivirus/ui/callmessagefilter/j;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/k;->a:Lcom/antivirus/ui/callmessagefilter/d;

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/k;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/k;->c:Lcom/antivirus/ui/callmessagefilter/v;

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/ui/callmessagefilter/j;->a(Lcom/antivirus/ui/callmessagefilter/j;Lcom/antivirus/ui/callmessagefilter/d;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/v;)V

    return-void
.end method
