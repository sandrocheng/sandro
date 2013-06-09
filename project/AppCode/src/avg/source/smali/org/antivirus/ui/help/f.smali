.class final Lorg/antivirus/ui/help/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/help/Help;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/help/Help;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/help/f;->a:Lorg/antivirus/ui/help/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/help/f;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->g(Lorg/antivirus/ui/help/Help;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
