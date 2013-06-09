.class final Lorg/antivirus/ui/help/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/help/Help;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/help/Help;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/help/d;->a:Lorg/antivirus/ui/help/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/help/d;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->b(Lorg/antivirus/ui/help/Help;)V

    return-void
.end method
