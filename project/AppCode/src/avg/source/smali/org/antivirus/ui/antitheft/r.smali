.class final Lorg/antivirus/ui/antitheft/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/r;->c:Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;

    iput-object p2, p0, Lorg/antivirus/ui/antitheft/r;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/antivirus/ui/antitheft/r;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/r;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/r;->c:Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-static {v1}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->a(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/r;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
