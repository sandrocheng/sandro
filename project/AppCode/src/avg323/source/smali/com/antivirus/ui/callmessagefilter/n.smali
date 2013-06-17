.class Lcom/antivirus/ui/callmessagefilter/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/d;

.field final synthetic c:Lcom/antivirus/ui/callmessagefilter/b/d;

.field final synthetic d:Lcom/antivirus/ui/callmessagefilter/a/d;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/j;Landroid/content/Context;Lcom/antivirus/ui/callmessagefilter/d;Lcom/antivirus/ui/callmessagefilter/b/d;Lcom/antivirus/ui/callmessagefilter/a/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/n;->f:Lcom/antivirus/ui/callmessagefilter/j;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/n;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/antivirus/ui/callmessagefilter/n;->b:Lcom/antivirus/ui/callmessagefilter/d;

    iput-object p4, p0, Lcom/antivirus/ui/callmessagefilter/n;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    iput-object p5, p0, Lcom/antivirus/ui/callmessagefilter/n;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    iput-object p6, p0, Lcom/antivirus/ui/callmessagefilter/n;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/n;->b:Lcom/antivirus/ui/callmessagefilter/d;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/d;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/n;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/b/d;->b()I

    move-result v2

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/n;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/a/d;->b()I

    move-result v3

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/antivirus/core/b/a/b;->a(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
