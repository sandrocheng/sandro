.class final Lorg/antivirus/wipe/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lorg/antivirus/wipe/WipeByApp;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeByApp;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/g;->b:Lorg/antivirus/wipe/WipeByApp;

    iput-object p2, p0, Lorg/antivirus/wipe/g;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/wipe/g;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
