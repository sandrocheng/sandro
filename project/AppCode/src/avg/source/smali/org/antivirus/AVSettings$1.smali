.class Lorg/antivirus/AVSettings$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lorg/antivirus/AVSettings;


# direct methods
.method constructor <init>(Lorg/antivirus/AVSettings;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/AVSettings$1;->a:Lorg/antivirus/AVSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lorg/antivirus/AVSettings;->a()V

    return-void
.end method
