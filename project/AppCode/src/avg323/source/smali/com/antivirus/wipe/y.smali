.class Lcom/antivirus/wipe/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/y;->b:Lcom/antivirus/wipe/b;

    iput-object p2, p0, Lcom/antivirus/wipe/y;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/wipe/y;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
