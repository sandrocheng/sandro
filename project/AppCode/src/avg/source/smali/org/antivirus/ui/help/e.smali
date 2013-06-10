.class final Lorg/antivirus/ui/help/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/help/Help;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/help/Help;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/help/e;->a:Lorg/antivirus/ui/help/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/help/e;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->a(Lorg/antivirus/ui/help/Help;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lorg/antivirus/ui/help/e;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->b(Lorg/antivirus/ui/help/Help;)V

    iget-object v0, p0, Lorg/antivirus/ui/help/e;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->c(Lorg/antivirus/ui/help/Help;)V

    return-void
.end method
