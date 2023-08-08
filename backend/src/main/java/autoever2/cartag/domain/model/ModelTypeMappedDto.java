package autoever2.cartag.domain.model;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Objects;

@Getter
@Setter
@NoArgsConstructor
public class ModelTypeMappedDto {

    private int modelId;
    private String modelName;
    private String modelTypeName;
    private Long modelPrice;
    private Long modelBoughtCount;
    private boolean isDefaultOption;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ModelTypeMappedDto that = (ModelTypeMappedDto) o;
        return modelId == that.modelId && isDefaultOption == that.isDefaultOption && Objects.equals(modelName, that.modelName) && Objects.equals(modelTypeName, that.modelTypeName) && Objects.equals(modelPrice, that.modelPrice) && Objects.equals(modelBoughtCount, that.modelBoughtCount);
    }
}
