.class Lorg/antivirus/ui/BaseToolActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/BaseToolActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/BaseToolActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/BaseToolActivity$5;->a:Lorg/antivirus/ui/BaseToolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/BaseToolActivity$5;->a:Lorg/antivirus/ui/BaseToolActivity;

    invoke-virtual {v0, p2}, Lorg/antivirus/ui/BaseToolActivity;->a(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
