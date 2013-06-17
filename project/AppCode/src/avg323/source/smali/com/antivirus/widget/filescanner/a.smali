.class final Lcom/antivirus/widget/filescanner/a;
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
.method public a(Landroid/os/Parcel;)Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;
    .locals 1

    new-instance v0, Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;

    invoke-direct {v0, p1}, Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;
    .locals 1

    new-array v0, p1, [Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/widget/filescanner/a;->a(Landroid/os/Parcel;)Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/widget/filescanner/a;->a(I)[Lcom/antivirus/widget/filescanner/FileScannerWidgetPlugin;

    move-result-object v0

    return-object v0
.end method
