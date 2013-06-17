.class Lcom/antivirus/ui/antitheft/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/l;->b:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;

    iput-object p2, p0, Lcom/antivirus/ui/antitheft/l;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/l;->b:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;->a(Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/l;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/l;->b:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;->b(Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    return-void
.end method
