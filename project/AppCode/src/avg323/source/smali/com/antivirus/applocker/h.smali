.class Lcom/antivirus/applocker/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/antivirus/applocker/g;


# direct methods
.method constructor <init>(Lcom/antivirus/applocker/g;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/applocker/h;->a:Lcom/antivirus/applocker/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/antivirus/applocker/h;->a:Lcom/antivirus/applocker/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/g;->e(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/applocker/h;->a:Lcom/antivirus/applocker/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antivirus/applocker/g;->e(Z)V

    goto :goto_0
.end method
