.class final Lorg/antivirus/ui/antitheft/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/s;->a:Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/s;->a:Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->c(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/s;->a:Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;->b(Lorg/antivirus/ui/antitheft/AntiTheftLockMessage;)V

    return-void
.end method
