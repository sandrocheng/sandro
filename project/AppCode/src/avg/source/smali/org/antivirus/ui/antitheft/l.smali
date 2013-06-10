.class abstract Lorg/antivirus/ui/antitheft/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field protected c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

.field final synthetic d:Lorg/antivirus/ui/antitheft/AntiTheftActivity;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/l;->d:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/antivirus/ui/antitheft/l;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    return-void
.end method
