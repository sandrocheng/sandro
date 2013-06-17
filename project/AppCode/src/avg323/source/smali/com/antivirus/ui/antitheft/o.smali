.class Lcom/antivirus/ui/antitheft/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/o;->a:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/o;->a:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;->c(Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    invoke-static {}, Lcom/antivirus/c;->n()V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/o;->a:Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;->b(Lcom/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    return-void
.end method
