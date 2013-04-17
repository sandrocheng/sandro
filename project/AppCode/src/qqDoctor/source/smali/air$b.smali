.class final Lair$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lair$a;

.field private c:Llf;

.field private d:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Llf;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic e:Lair;


# direct methods
.method public constructor <init>(Lair;Landroid/content/Context;Lair$a;Llf;Ldv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lair$a;",
            "Llf;",
            "Ldv",
            "<",
            "Llf;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lair$b;->e:Lair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lair$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lair$b;->b:Lair$a;

    iput-object p4, p0, Lair$b;->c:Llf;

    iput-object p5, p0, Lair$b;->d:Ldv;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lair$b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lair$b;->b:Lair$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lair$b;->c:Llf;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    iget-object v1, p0, Lair$b;->b:Lair$a;

    iget-object v1, v1, Lair$a;->e:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_2

    const/16 v1, 0x6746

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lair$b;->c:Llf;

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lair$b;->b:Lair$a;

    iget-object v1, v1, Lair$a;->f:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_3

    const/16 v1, 0x6747

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "smslogname"

    iget-object v2, p0, Lair$b;->c:Llf;

    iget-object v2, v2, Llf;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "smslogphonenum"

    iget-object v2, p0, Lair$b;->c:Llf;

    iget-object v2, v2, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lair$b;->e:Lair;

    invoke-static {v1}, Lair;->a(Lair;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SecureSmsDialogueActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lair$b;->e:Lair;

    invoke-static {v1}, Lair;->a(Lair;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lair$b;->b:Lair$a;

    iget-object v1, v1, Lair$a;->g:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_0

    const/16 v1, 0x6748

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lair$b;->d:Ldv;

    iget-object v1, p0, Lair$b;->c:Llf;

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
