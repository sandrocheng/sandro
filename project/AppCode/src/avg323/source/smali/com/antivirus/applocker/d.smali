.class Lcom/antivirus/applocker/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/antivirus/applocker/AppLockerActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/applocker/AppLockerActivity;[I)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/applocker/d;->b:Lcom/antivirus/applocker/AppLockerActivity;

    iput-object p2, p0, Lcom/antivirus/applocker/d;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/applocker/d;->b:Lcom/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lcom/antivirus/applocker/AppLockerActivity;->a(Lcom/antivirus/applocker/AppLockerActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/applocker/g;

    iget-object v1, p0, Lcom/antivirus/applocker/d;->a:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/g;->b(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
