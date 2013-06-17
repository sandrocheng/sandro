.class final Lcom/antivirus/widget/protection/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;
    .locals 2

    new-instance v0, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;-><init>(Landroid/os/Parcel;Lcom/antivirus/widget/protection/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;
    .locals 1

    new-array v0, p1, [Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/widget/protection/b;->a(Landroid/os/Parcel;)Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/widget/protection/b;->a(I)[Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;

    move-result-object v0

    return-object v0
.end method
