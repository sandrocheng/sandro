.class final Lorg/antivirus/applocker/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lorg/antivirus/applocker/AppLockerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/applocker/AppLockerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/applocker/b;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/b;->a:Lorg/antivirus/applocker/AppLockerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/AppLockerActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/applocker/b;->a:Lorg/antivirus/applocker/AppLockerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/AppLockerActivity;->a(Z)V

    goto :goto_0
.end method
