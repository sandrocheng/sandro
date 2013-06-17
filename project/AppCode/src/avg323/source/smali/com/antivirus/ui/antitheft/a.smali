.class Lcom/antivirus/ui/antitheft/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/antivirus/ui/antitheft/AntiTheftActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/AntiTheftActivity;[I)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/a;->b:Lcom/antivirus/ui/antitheft/AntiTheftActivity;

    iput-object p2, p0, Lcom/antivirus/ui/antitheft/a;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/a;->b:Lcom/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/AntiTheftActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/antitheft/b;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/a;->a:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/antitheft/b;->b(I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
