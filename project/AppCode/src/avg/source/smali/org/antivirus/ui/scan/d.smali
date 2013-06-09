.class final Lorg/antivirus/ui/scan/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/scan/FileRemover;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/FileRemover;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/d;->a:Lorg/antivirus/ui/scan/FileRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/d;->a:Lorg/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/FileRemover;->finish()V

    return-void
.end method
