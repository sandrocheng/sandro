.class Lcom/antivirus/ui/help/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/help/HelpTabletActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/help/c;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/help/c;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->m()V

    iget-object v0, p0, Lcom/antivirus/ui/help/c;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/ui/help/HelpTabletActivity;->b(Lcom/antivirus/ui/help/HelpTabletActivity;Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/help/c;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->g(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    return-void
.end method
