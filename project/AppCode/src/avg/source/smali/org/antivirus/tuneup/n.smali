.class final Lorg/antivirus/tuneup/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/n;->b:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    iput-object p2, p0, Lorg/antivirus/tuneup/n;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const v4, 0x7f08008e

    const v3, 0x7f08008d

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/n;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/n;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/tuneup/n;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/n;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
