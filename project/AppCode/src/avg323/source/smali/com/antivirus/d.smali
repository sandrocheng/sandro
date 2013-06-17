.class Lcom/antivirus/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/antivirus/c;


# direct methods
.method constructor <init>(Lcom/antivirus/c;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/d;->a:Lcom/antivirus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/antivirus/c;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
